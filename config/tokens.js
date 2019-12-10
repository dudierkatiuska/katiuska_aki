'use strict'
var jwt = require('jsonwebtoken')

async function checkToken(token)
{
    var result = ''
    jwt.verify(token, 'Akipartes2019', function(err, user) {
        if (err) {
            result = 'Token inválido'
        } else if (user !== undefined) {
            result = user.id
        }
    })
    return result
}

module.exports.checkToken = checkToken
