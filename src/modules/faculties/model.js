const { GETALL, getFirst} = require('./query.js')
const { fetch, fetchAll } = require('../../lib/postgres.js')

const READ = async ({id = 0}) => {
    try {
        return await fetchAll(GETALL, id)
    } catch (error) {
        console.log(error)
    }
}


const readFirst = async ({id = 0}) => {
    try {
        return await fetchAll(getFirst, id)
    } catch (error) {
        console.log(error)
    }
}


module.exports = {
     READ, readFirst
}