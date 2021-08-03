import React, { createContext, useReducer} from 'react';
import AppReducer from './AppReducer'


const initialState = {
    authenticated: false,
    markers: [],
    role: ''
}

export const GlobalContext = createContext(initialState);

// Provider Component
export const GlobalProvider = ({children})  => {
    const [state, dispatch] = useReducer(AppReducer, initialState);

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
                editMarker
            }}
        >
            {
                children
            }
        </GlobalContext.Provider>
    )

}