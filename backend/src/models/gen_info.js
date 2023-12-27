const monggose = require('mongoose')

const noteSchema = monggose.Schema({
    id:{
        type: String,
        unique: true,
        require: true
    },
    userid:{
        type: String,
        require: true
    },
    title:{
        type:String,
        require: true
    },
    content:{
        type: String
    },
    dateadded:{
        type:Date,
        default:Date.now
    }
})

module.exports = monggose.model("Note", noteSchema)