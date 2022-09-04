const model  = require('./model.js')
const {sign, verify} = require('../../utils/jwt.js');

const getByUserId = async (req,res) => {
    try {
        let results = await model.readByUser(req.params)
        if(results) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: results
            })
        }
    } catch (error) {
        console.log(error);
    }
}


const getByResultId = async (req,res) => {
    try {
        let results = await model.readByResult(req.query)
        if(results) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: results
            })
        }
    } catch (error) {
        console.log(error);
    }
}

const getHighestResults = async (req,res) => {
    try {
        let results = await model.readHighestResults()
        if(results) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: results
            })
        }
    } catch (error) {
        console.log(error);
    }
}

const postResults = async (req,res) => {
    try {
            let results = await model.sendResult(req.body)
            if(results) {
                res.status(200).json({
                    status:200,
                    message: 'ok',
                    data: results
                })
            }
    } catch (error) {
        console.log(error);
    }
}



module.exports = {
    getByUserId, getByResultId, getHighestResults, postResults
}