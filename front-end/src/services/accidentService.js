
import Axios from 'axios'
import transformation from 'transform-coordinates';


const baseUrl = 'http://localhost:8000'

const config = {
    headers: { Authorization: localStorage.getItem('jwt') }
};

export async function getAccidents() {
    const endpoint = `${baseUrl}/api/accidents`;
    return await Axios.get(endpoint,config);
}

export async function filterAccidents(filters) {
    const endpoint = `${baseUrl}/api/accidents/filtereds`;
    return await Axios.post(endpoint,filters,config);
}


export async function getAccident(id) {
    const endpoint = `${baseUrl}/api/accidents/${id}`;
    return await Axios.get(endpoint);
}

export async function addAccident(accident) {
    const endpoint = `${baseUrl}/api/accidents`;
    return await Axios.post(endpoint, accident, {
        headers: {
            Authorization: localStorage.getItem('jwt'),
            'Cache-Control': 'no-cache',
            'Content-Type': 'multipart/form-data',
        }
    });
}

// export async function updateAccident(accident,id) {
//     const endpoint = `${baseUrl}/api/accidents/${id}`;
//     return await Axios.put(endpoint, accident, {
//         headers: {
//             Authorization: localStorage.getItem('jwt'),
//             'Cache-Control': 'no-cache',
//             'Content-Type': 'multipart/form-data',
//         }
//     });
// }
export async function updateAccident(accident,id) {
    const endpoint = `${baseUrl}/api/accidents/${id}`;
    return await Axios.put(endpoint, accident, {
        headers: {
            Authorization: localStorage.getItem('jwt'),
            'Cache-Control': 'no-cache'
        }
    });
}

export async function removeAccident(id) {
    const endpoint = `${baseUrl}/api/testdatas/${id}`;
    return await Axios.delete(endpoint, {
        headers: {
            Authorization: localStorage.getItem('jwt'),
        }
    });
}
