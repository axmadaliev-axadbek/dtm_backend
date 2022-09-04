const model  = require('./model.js')
const GETALL = async (req,res) => {
    try {
        let universities = await model.READ(req.query)
        if(universities) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: universities
            })
        } 
    } catch (error) {
        console.log(error);
    }
}

const getFirst = async (req,res) => {
    try {
        let university = await model.readFirst(req.params)
        if(university) {
            res.status(200).json({
                status:200,
                message: 'ok',
                data: university
            })
        }
    } catch (error) {
        console.log(error);
    }
}






module.exports = {
    GETALL, getFirst
}