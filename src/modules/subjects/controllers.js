const model  = require('./model.js')
const GETALL = async (req,res) => {
    try {
        let subjects = await model.READ(req.params)
        if(subjects) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: subjects
            })
        }
    } catch (error) {
        console.log(error);
    }
}

const getFirst = async (req,res) => {
    try {
        let subjects = await model.readFirst(req.params)
        if(subjects) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: subjects
            })
        }
    } catch (error) {
        console.log(error);
    }
}






module.exports = {
    GETALL, getFirst
}