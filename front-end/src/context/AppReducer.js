export default (state, action) => {
    switch(action.type) {
        case 'ADD_MARKER': {
            return {
                ...state,
                markers: [action.payload, ...state.markers]
            }
        }
        case 'FILTER_MARKERS': {
            return {
                ...state,
                markers: action.payload
            }
        }
        case 'UPDATE_MARKER': {
            const { 
                latitude,
                longitude,
                date,
                governorat,
                delegation,
                pointKilometrique,
                route,
                nbrVictime,
                nbrTuee,
                nbrBlesse,
                causeAccident,
                typeAccident
            } = action.payload;
            return {
                ...state,
                selectedMarker: {
                    ...state.selectedMarker,
                    latitude,
                    longitude,
                    date,
                    governorat,
                    delegation,
                    pointKilometrique,
                    route,
                    nbrVictime,
                    nbrTuee,
                    nbrBlesse,
                    causeAccident,
                    typeAccident
                },
                markers: [...state.markers.filter(e => e.id != state.selectedMarker.id),  {
                    ...state.selectedMarker,
                    latitude,
                    longitude,
                    date,
                    governorat,
                    delegation,
                    pointKilometrique,
                    route,
                    nbrVictime,
                    nbrTuee,
                    nbrBlesse,
                    causeAccident,
                    typeAccident
                }]
            }
        }
        case 'GET_MARKERS': {
            return {
                ...state,
                markers: action.payload
            }
        }
        case 'LOADING': {
            return {
                ...state,
                loading: action.payload
            }
        }
        case 'REMOVE_MARKER': {
            return {
                ...state,
                selectedMarker: null,
                markers: state.markers.filter(m => m.id !== action.payload)
            }
        }
        case 'SELECT_MARKER': {
            return {
                ...state,
                selectedMarker: action.payload
            }
        }
        case 'LOGIN_SUCCESS':
            return {
                ...state,
                authenticated: true,
                role: action.payload,
                loading: false
            }
        case 'LOGOUT':
            return {
                ...state,
                authenticated: false
            }
    }
}