import Axios from "axios"


// POST (w/ body) => Authentication / CREATE 
// DELETE => Bech tfasa5
// PUT/PATCH => update 
// GET (No body) => Get Data 

const baseUrl = 'localhost:8000'

export async function login(email ,password){
    const endpoint = `${baseUrl}/api/login`
    return await Axios.post(endpoint, {
        username: email,
        password: password
    },{
        headers: {"Access-Control-Allow-Origin": "*"}
    });    

}

// Access-Control-Allow-Origin: *