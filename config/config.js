 'use strict'
const Sequelize = require('sequelize');
const Op = Sequelize.Op;
var pg = require('pg');
pg.defaults.ssl = true;

const sequelize = new Sequelize(
                              'd3p2l2mgfgtdnk',
                              'violamscxjbmoh',
                              'a187cfa0a4de8851814bcddeb93b56562482b78db3f1714c0dd4c991442de381',
                              {
                                host: 'ec2-174-129-254-238.compute-1.amazonaws.com',
                                port: '5432',
                                dialect: 'postgres', 
                                pool:{
                                  max:5,
                                  min:0,
                                  require:30000,
                                  idle:10000
                                }
                              }
                          )

sequelize.authenticate()
  .then(() => {
    console.log('Conectado')
  })
  .catch(err => {
    console.log('No se conecto')
  })

module.exports.sequelize = sequelize 
module.exports.op = Op 