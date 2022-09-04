const model  = require('./model.js')
const GETALL = async (req,res) => {
    try {
        let tests = await model.READ(req.query)
        if(tests) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: tests
            })
        }
    } catch (error) {
        console.log(error);
    }
}

const getFirst = async (req,res) => {
    try {
        let tests = await model.readFirst(req.params)
        if(tests) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: tests
            })
        }
    } catch (error) {
        console.log(error);
    }
}






module.exports = {
    GETALL, getFirst
}