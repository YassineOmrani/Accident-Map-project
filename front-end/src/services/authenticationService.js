import Axios from "axios"


// POST (w/ body) => Authentication / CREATE 
// DELETE => Bech tfasa5
// PUT/PATCH => update 
// GET (No body) => Get Data 

const baseUrl = 'localhost:8000'

export async function login(email ,password){
    // const endpoint = `${baseUrl}/api/login_check`
    const endpoint = `http://localhost:8000/api/login_check`
    return await Axios.post(endpoint, {
        username: email,
        password: password
    },{
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Methods": "DELETE, POST, GET, OPTIONS",
            "Access-Control-Allow-Headers": "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With"
        }
    });    

}

// Access-Control-Allow-Origin: *