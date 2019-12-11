'use strict'
const product_model = require('../models/product.js'),
    favoriteproduct_model = require('../models/favoriteproduct.js'),
    popularproduct_model = require('../models/popularproduct.js'),
    helpers = require('../config/helpers'),
    Op = require('../config/config').op,
    number_products_pagination = 15

async function searchProduct(req, res) 
{
    var key = req.params.key,
        from = req.query.from,
        //to = req.query.to,
        new_results = []
    key = key.toLowerCase()
    return new Promise(async(resolve) => {
        if (from != undefined /*&& to != undefined*/) {
            var result = await (product_model.findAll({
                offset: from,
                limit: number_products_pagination,
                where:{
                    prod_name: {[Op.iLike]: '%' + key + '%'}
                },
                order: [
                ['prod_price', 'ASC']
            ]}))
            var result_all = await (product_model.findAll({
                    where:{
                        prod_name: {[Op.iLike]: '%' + key + '%'}
                    },
                    order: [
                    ['prod_price', 'ASC']
                ]})),
                new_results = result,
                count_prod = result_all.length
        } else {
            var result = await (product_model.findAll({
                where:{
                    prod_name: {[Op.iLike]: '%' + key + '%'}
                },
                order: [
                ['prod_price', 'ASC']
            ]})),
                new_results = result,
                count_prod = result.length
        }
        var products = []
        if (count_prod > 0) {
            var date = new Date(),
                date_reg = (date.getMonth() +1) + "/" + date.getDate() + "/" + date.getFullYear()
            var _data = {
                "popr_description": key,
                "popr_count": 1,
                "popr_date": date_reg
            }
            var result_popular = await (popularproduct_model.findAll({})),
                result_popular_to_update = [],
                band_popular = false
            if (result_popular.length > 0) {
                for (var i in result_popular) {
                    if ((result_popular[i].popr_description).toLowerCase() == key.toLowerCase()) {
                        band_popular = true
                        result_popular_to_update.push(result_popular[i])
                        _data.popr_description = result_popular[i].popr_description
                        _data.popr_count = parseInt(result_popular[i].popr_count) + 1
                        _data.popr_date = result_popular[i].popr_date
                    }
                }
            }
            if (band_popular) {
                var results = ''
                result_popular_to_update.forEach(async popularproduct_model => {
                    try {
                        var result = await (popularproduct_model.update(_data));
                        results = 'Se actualizó la búsqueda popular correctamente'
                    } catch (e) {
                        results = e.parent.detail
                    }
                })
            } else {
                var result_create_popular = await(popularproduct_model.create(_data))
            }
            for (var i in new_results) {
                products[i] = {};
                products[i].ide = new_results[i].prod_ide
                products[i].name = new_results[i].prod_name
                products[i].price = new_results[i].prod_price
                products[i].permalink = new_results[i].prod_link
                products[i].src = new_results[i].prod_src
                products[i].url = new_results[i].prod_url
                products[i].categories = new_results[i].prod_categories
                products[i].attribute = new_results[i].prod_attribute

            }
            var result = {}
            result.products = products
            result.count = count_prod
            resolve(result)
        } else {
            resolve('No hay ningún producto para mostrar')
        }
    })
}

async function getTopSearches(req, res) 
{
    return new Promise(async (resolve) => {
        var result = [],
            new_results = [],
            limit_searches = 7

        result = await (popularproduct_model.findAll({
            order: [
                ['popr_count', 'DESC']
        ]}))
        if (result.length > limit_searches) {
            for (var i = 0; i < limit_searches; i++) {
                new_results.push(result[i])
            }
            resolve(new_results)
        } else if (result.length < (limit_searches + 1)) {
            resolve(result)
        } else if (result.length == 0) {
            resolve('No hay ninguna búsqueda para mostrar')
        }
    })
}

async function filterBy(req, res) 
{
    return new Promise(async (resolve) => {
        var type = req.query.color,
            brand = req.query.marca,
            measures = req.query.medidas,
            city = req.query.ciudad,
            from = req.query.from,
            //to = req.query.to,
            new_results = []
        var result = await (product_model.findAll({
            order: [
            ['prod_price', 'ASC']
        ]}))
        if (result.length > 0) {
            var backup_result = result
            for (var i in result) {
                var attributes_product = result[i].prod_attribute.replace(/\'/gi, '\"')
                attributes_product = JSON.parse(attributes_product)
                for (var j in attributes_product) {
                    if (j.toLowerCase() == 'ciudad') {
                        if (city != undefined) {
                            var type_options = city.split(',')
                            for (var k in type_options) {
                                var attribute_options = attributes_product[j].split(',')
                                for (var l in attribute_options) {
                                    if (attribute_options[l].toLowerCase() == type_options[k].toLowerCase()) {
                                        new_results.push(result[i])
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (new_results.length > 0) {
                result = new_results
            }
            new_results = []
            for (var i in result) {
                var attributes_product = result[i].prod_attribute.replace(/\'/gi, '\"')
                attributes_product = JSON.parse(attributes_product)
                for (var j in attributes_product) {
                    if (j.toLowerCase() == 'color') {
                        if (type != undefined) {
                            var type_options = type.split(',')
                            for (var k in type_options) {
                                var attribute_options = attributes_product[j].split(',')
                                for (var l in attribute_options) {
                                    if (attribute_options[l].toLowerCase() == type_options[k].toLowerCase()) {
                                        new_results.push(result[i])
                                    }
                                }
                            }
                        }
                    }
                    if (j.toLowerCase() == 'marca') {
                        if (brand != undefined) {
                            var type_options = brand.split(',')
                            for (var k in type_options) {
                                var attribute_options = attributes_product[j].split(',')
                                for (var l in attribute_options) {
                                    if (attribute_options[l].toLowerCase() == type_options[k].toLowerCase()) {
                                        new_results.push(result[i])
                                    }
                                }
                            }
                        }
                    }
                    if (j.toLowerCase() == 'medidas') {
                        if (measures != undefined) {
                            var type_options = measures.split(',')
                            for (var k in type_options) {
                                var attribute_options = attributes_product[j].split(',')
                                for (var l in attribute_options) {
                                    if (attribute_options[l].toLowerCase() == type_options[k].toLowerCase()) {
                                        new_results.push(result[i])
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (new_results.length == 0) {
                new_results = result
            }

            new_results = helpers.removeDuplicates(new_results)
            var count_prod = new_results.length
            console.log(from, number_products_pagination, count_prod)
            if (from != undefined/*&& to != undefined*/) {
                new_results = new_results.slice(from)
                new_results = new_results.slice(0, number_products_pagination)
            }
            var result = {}
            result.products = new_results
            result.count = count_prod
            resolve(result)
        } else {
            resolve('No hay ningún producto para mostrar')
        }
    })
}

module.exports.searchProduct = searchProduct
module.exports.getTopSearches = getTopSearches
module.exports.filterBy = filterBy