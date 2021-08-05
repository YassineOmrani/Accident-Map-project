import React, { createContext, useReducer} from 'react';
import AppReducer from './AppReducer'
import jwt_decode from 'jwt-decode';
import {login as auth} from '../services/authenticationService';

const initialState = {
    authenticated: false,
    markers: [],
    role: ''
}

export const GlobalContext = createContext(initialState);

// Provider Component
export const GlobalProvider = ({children})  => {
    const [state, dispatch] = useReducer(AppReducer, initialState);

    const login = (email, password) => {
        auth(email, password)
        .then(res => {
            const token = res.data.token
            const decodedToken = jwt_decode(token)
            console.log(decodedToken)
            dispatch({
                type: 'LOGIN_SUCCESS',
                payload: "USER"
            })

        })
        .catch(err => console.log(err))
    }

    const addMarker = (marker) => {
        dispatch({
            type: 'ADD_MARKER',
            payload: marker
        })
    }

    const removeMarker = (id) => {
        dispatch({
            type: 'REMOVE_MARKER',
            payload: id
        })
    }

    const editMarker = (marker) => {
        dispatch({
            type: 'EDIT_MARKER',
            payload:  marker
        })
    }

    return (
        <GlobalContext.Provider
            value={{
                authenticated: state.authenticated,
                markers: state.markers,
                role: state.role,
                addMarker,
                removeMarker,
                editMarker,
                login
            }}
        >
            {
                children
            }
        </GlobalContext.Provider>
    )

}