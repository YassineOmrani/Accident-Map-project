export default (state, action) => {
    switch(action.type) {
        case 'ADD_MARKER': {
            return {
                ...state,
                wishlist: [action.payload, ...state.wishlist]
            }
        }
        case 'REMOVE_MARKER': {
            return {
                ...state,
                wishlist: state.wishlist.filter((movie) => movie.imdbID !== action.payload)
            }
        }
        case 'LOGIN_SUCCESS':
            return {
                ...state,
                authenicated: true,
                role: action.payload
            }
        case 'LOGOUT':
            return {
                ...state,
                authenicated: false
            }
    }
}