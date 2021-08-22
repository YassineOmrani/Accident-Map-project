import React, { createContext, useReducer } from 'react';
import AppReducer from './AppReducer'
import jwt_decode from 'jwt-decode';
import { login as auth } from '../services/authenticationService';
import { getAccidents, addAccident, removeAccident, updateAccident, filterAccidents } from '../services/accidentService';


const initialState = {
    authenticated: false,
    markers: [],
    role: '',
    selectedMarker: null,
    loading: false
}

export const GlobalContext = createContext(initialState);

// Provider Component
export const GlobalProvider = ({ children }) => {
    const [state, dispatch] = useReducer(AppReducer, initialState);

    const login = (email, password) => {
        dispatch({
            type: "LOADING",
            payload: true
        })
        auth(email, password)
            .then(res => {
                const token = res.data.token
                const decodedToken = jwt_decode(token)
                console.log(res.data)
                console.log(decodedToken)
                localStorage.setItem("jwt", 'Bearer ' + token);
                dispatch({
                    type: 'LOGIN_SUCCESS',
                    payload: decodedToken.roles[0]
                })
            })
            .catch(err => console.log(err))
    }


    const logout = () => {
        localStorage.clear('jwt')
        dispatch({
            type: "LOGOUT"
        })
    }


    const getMarkers = () => {
        getAccidents()
            .then(res => {
                const markers = res.data;
                console.log(res)
                dispatch({
                    type: "GET_MARKERS",
                    payload: markers
                })
            }).catch(err => console.log(err))
    }

    const addMarker = (marker) => {
        addAccident(marker)
            .then(res => {
                console.log(res.data)
               const newMarker = {...res, latitude: res.latitude,longitude: res.longitude};
                dispatch({
                    type: 'ADD_MARKER',
                    payload: res.data
                })
            }).catch(err => console.log(err))

    }

    const removeMarker = (id) => {
        removeAccident(id)
            .then(res => {
                getAccidents()
                    .then(res => {
                        const markers = res.data;
                        dispatch({
                            type: 'REMOVE_MARKER',
                            payload: id
                        })
                    }).catch(err => console.log(err))
            }).catch(err => {
                console.log(err)
            })
    }

    const filterMarkers = (filters) => {
        filterAccidents(filters)
        .then(res => {
            dispatch({
                type: 'FILTER_MARKERS',
                payload: res.data
            })
        }).catch(err => console.log(err));
    }

    const editMarker = (marker,id) => {
        console.log("Marker from editMarker appState")
        updateAccident(marker,id)
        .then(res => {
            dispatch({
                type: 'UPDATE_MARKER',
                payload: marker
            })
            getAccidents()
            .then(res => {
                const markers = res.data;
                dispatch({
                    type: "GET_MARKERS",
                    payload: markers
                })
            }).catch(err => console.log(err))
        }).catch(err => console.log(err))

    }

    const setSelectedMarker = (marker) => {
        dispatch({
            type: 'SELECT_MARKER',
            payload: marker
        })
    }

    return (
        <GlobalContext.Provider
            value={{
                authenticated: state.authenticated,
                markers: state.markers,
                role: state.role,
                selectedMarker: state.selectedMarker,
                addMarker,
                removeMarker,
                editMarker,
                login,
                logout,
                setSelectedMarker,
                getMarkers,
                filterMarkers
            }}
        >
            {
                children
            }
        </GlobalContext.Provider>
    )

}