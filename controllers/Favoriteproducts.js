'use strict'
const favoriteproduct_model = require('../models/favoriteproduct'),
    product_model = require('../models/product.js'),
    general_helper = require('../config/helpers'),
    { checkToken } = require('../config/tokens')

async function createFavoriteProduct(req, res)
{
    var token = req.headers.authentication
    var result_token = await(checkToken(token))
    if (result_token === 'Token inválido') {
        return result_token
    }

    var products = general_helper.json2array(req.body.productos),
        date = new Date(),
        date_reg = (date.getMonth() +1) + "/" + date.getDate() + "/" + date.getFullYear()
    const data = {
        "fapr_user" : result_token,
        "fapr_product" : JSON.stringify(products),
        'fapr_date' : date_reg
    }
    const finduserproduct = await favoriteproduct_model.findAll({
        attributes: ['fapr_ide', 'fapr_user', 'fapr_product', 'fapr_date'],
        where:{
            fapr_user: result_token
        }
    });

    if (finduserproduct.length > 0) {
        return new Promise((resolve) => {
            finduserproduct.forEach(async favoriteproduct_model => {
                var results = '',
                    products_user = JSON.stringify(products)
                try {
                    var result = await (favoriteproduct_model.update({
                                                    fapr_user: result_token,
                                                    fapr_product: products_user,
                                                    fapr_date: date_reg
                                            }));
                    results = 'Producto favorito creado correctamente'
                } catch (e) {
                    results = e.parent.detail;
                }
                resolve(results)
            })
        })
    } else {
        try {
            var result = await(favoriteproduct_model.create(data))
            return 'Producto favorito creado correctamente'
        } catch (e) {
            return e.parent.detail
        }
    }   
}

async function updateFavoriteProduct(req, res)
{
    var token = req.headers.authentication
    var result_token = await(checkToken(token))
    if (result_token === 'Token inválido') {
        return result_token
    }

    var products = general_helper.json2array(req.body.productos),
        date = new Date(),
        date_reg = (date.getMonth() +1) + "/" + date.getDate() + "/" + date.getFullYear()
    const { user, producto} = req.body;
    const finduserproduct = await favoriteproduct_model.findAll({
        attributes: ['fapr_ide', 'fapr_user', 'fapr_product', 'fapr_date'],
        where:{
            fapr_user: result_token
        }
    });

    if (finduserproduct.length > 0) {
        return new Promise((resolve) => {
            finduserproduct.forEach(async favoriteproduct_model => {
                var products_user = general_helper.removeDuplicates(products),
                    results = ''
                products_user = JSON.stringify(products_user)
                try {
                    var result = await (favoriteproduct_model.update({
                                                    fapr_user: result_token,
                                                    fapr_product: products_user,
                                                    fapr_date: date_reg
                                            }));
                    results = 'Producto favorito del usuario actualizado correctamente';
                } catch (e) {
                    results = e.parent.detail;
                }
                resolve(results)
            })
        })
    } else {
        return new Promise((resolve) => {
            resolve("Usuario no encontrado")
        })
    }
}

async function deleteFavoriteProduct(req, res)
{
    var token = req.headers.authentication
    var result_token = await(checkToken(token))
    if (result_token === 'Token inválido') {
        return result_token
    }
    
    var fapr_product = parseInt(req.params.fapr_ide),
        date = new Date(),
        date_reg = (date.getMonth() +1) + "/" + date.getDate() + "/" + date.getFullYear()
    if (Number.isInteger(fapr_product) && fapr_product !== '') {
        const finduserproduct = await favoriteproduct_model.findAll({
            attributes: ['fapr_ide','fapr_user', 'fapr_product','fapr_date'],
            where:{
                fapr_user: result_token
            }
        });

        if (finduserproduct.length > 0) {
            return new Promise((resolve) => {
                finduserproduct.forEach(async favoriteproduct_model => {
                    var products_user = JSON.parse(finduserproduct[0].fapr_product),
                        results = '',
                        new_array = [],
                        band_product = false
                    for (var i in products_user) {
                        if (products_user[i] !== fapr_product) {
                            new_array.push(products_user[i])
                        } else {
                            band_product = true
                        }
                    }
                    products_user = general_helper.removeDuplicates(new_array)
                    products_user = JSON.stringify(products_user)
                    try {
                        var results = await (favoriteproduct_model.update({
                                                    fapr_user: result_token,
                                                    fapr_product: products_user,
                                                    fapr_date: date_reg
                                                }));
                        if (band_product) {
                            results = 'Producto favorito del usuario eliminado correctamente'
                        } else {
                            results = 'Producto favorito del usuario no encontrado'
                        }
                    } catch (e) {
                        results = e.parent.detail;
                    }
                    resolve(results)
                })
            })
        } else {
            return new Promise((resolve) => {
                resolve('Usuario no encontrado')
            })
        }
    } else {
        return new Promise((resolve) => {
            resolve('Producto favorito del usuario inválido')
        })
    }
}
async function getFavoriteProduct(req)
{
    var token = req.headers.authentication
    var result_token = await(checkToken(token))
    if (result_token === 'Token inválido') {
        return result_token
    }
    return new Promise(async(resolve) => {
        var result = await (favoriteproduct_model.findAll({ where: { fapr_user:  result_token } }))
        var count_prod_user = result.length;
        var products = []
        if (count_prod_user > 0) {
            var product = JSON.parse(result[0].fapr_product)
            for (var i in product) {
                products[i] = {};
                var result_product = await (product_model.findAll({ where: { prod_ide:  product[i] } }))
                products[i].ide = result_product[0].prod_ide
                products[i].name = result_product[0].prod_name
                products[i].price = result_product[0].prod_price
                products[i].permalink = result_product[0].prod_link
                products[i].imagen = result_product[0].prod_src
                products[i].url_tienda = result_product[0].prod_url 
                products[i].categories = result_product[0].prod_categories
                products[i].attributes = result_product[0].prod_attribute
            }
            resolve(products)
        } else {
            resolve('No hay ningún producto favorito del usuario para mostrar')
        }
    })
}

module.exports.createFavoriteProduct = createFavoriteProduct
module.exports.updateFavoriteProduct = updateFavoriteProduct
module.exports.deleteFavoriteProduct = deleteFavoriteProduct
module.exports.getFavoriteProduct = getFavoriteProduct