
import Axios from 'axios'


const baseUrl = 'localhost:8000'

export async function getAccidents() {
    const endpoint = `${baseUrl}/api/accidents`;

    return await Axios.get(endpoint);
}


export async function getAccident(id) {
    const endpoint = `${baseUrl}/api/accidents/${id}`;
    return await Axios.get(endpoint);
}

export async function addAccident(accident) {
    const endpoint = `${baseUrl}/api/accidents/${id}`;
    return await Axios.post(endpoint, accident);
}

// export async function addAccident(accident) {
//     const endpoint = `${baseUrl}/api/accidents/${id}`;
//     return await Axios.post(endpoint, accident);
// }