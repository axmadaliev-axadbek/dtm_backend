const model  = require('./model.js')
const GETALL = async (req,res) => {
    try {
        let faculties = await model.READ(req.params)
        if(faculties) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: faculties
            })
        }
    } catch (error) {
        console.log(error);
    }
}

const getFirst = async (req,res) => {
    try {
        let faculties = await model.readFirst(req.params)
        if(faculties) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: faculties
            })
        }
    } catch (error) {
        console.log(error);
    }
}






module.exports = {
    GETALL, getFirst
}