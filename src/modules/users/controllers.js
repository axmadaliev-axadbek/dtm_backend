const model  = require('./model.js')
const {sign} = require('../../utils/jwt.js');
const GETALL = async (req,res) => {
    try {
        let users = await model.ALLUSERS(req.params)
        if(users) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: users
            })
        }
    } catch (error) {
        console.log(error);
    }
}


const LOGIN = async (req,res) => {
    try { 
        let user = await model.LOGINPROFILE(req.body)

        if(user) {
            res.status(200).json({
                status:200,
                message: 'Login',
                data: user,
                token: sign(user.user_id)
            })
        }
    } catch (error) {
        console.log(error);
    }
}

const REGISTER = async (req,res) => {
    try {
        let user = await model.REGISTERACCOUNT(req.body)
        if(user) {
            res.status(200).json({
                status:200,
                message: 'Created',
                data: user,
                token: sign(user.user_id)
            })
        }
    } catch (error) {
        console.log(error);
    }
}




module.exports = {
    GETALL, LOGIN, REGISTER
}