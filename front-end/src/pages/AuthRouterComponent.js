import LoginPage from './LoginPage'
import MapPage from './MapPage'
import { useContext, useEffect, useState } from 'react';
import { GlobalContext } from '../context/AppState';




function AuthRouterComponent() {
    
    const { authenticated } = useContext(GlobalContext)

    return (
        <div>
            {
                (authenticated || localStorage.getItem('jwt') != null) ?
                (<MapPage />) : (<LoginPage />)
            }
        </div>
    )
}

export default AuthRouterComponent
