import React, { useContext, useState } from 'react'
import { GlobalContext } from '../context/AppState'
import "../assets/css/loginpage.css"
import userIcon from "../assets/img/user.png"
import SalamaIcon from "../assets/img/salama.jpg"
import interieurIcon from "../assets/img/armoirie.png"
import Tunisie from "../assets/img/tunisie.png"

export default function LoginPage() {

    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')

    const [emailError, setEmailError] = useState('');
    const [passwordError, setPasswordError ] = useState('');

    const { login } = useContext(GlobalContext);


    const isFormValid =() => {
        if (email.length == 0) {
            setEmailError('le champ email ne peut pas etre vide  !!')
        } else {
            setEmailError('')
        }  

        if ( password.length == 0 ) {
            setPasswordError('le champ mot de pass ne peut pas etre vide !!')

        } else {
            setPasswordError('')
        }
        // Condition where form is valid
        if (emailError == '' && passwordError == '') {
            handleSubmit()
        }
    }

    const handleSubmit = (event) => {
        event.preventDefault();
        console.log(email, password);
        login(email, password)
    }

    return (
        <div className="wrapper fadeInDown">
            <div id="formContent">
                <div className="fadeIn first">
                    <img src={userIcon} id="icon" alt="User Icon" />
                </div>
                <form onSubmit={handleSubmit} >
                    <input 
                        type="text" 
                        id="login" 
                        class="fadeIn second" 
                        name="login" 
                        placeholder="email"
                        value={email}
                        onChange={(e) => setEmail(e.target.value)}  
                    />
                    { emailError && (
                       <p 
                       style={{
                            fontSize: "15px",
                            color: "red",
                            textAlign: "center"
                       }}
                       >{emailError}</p> 
                    ) }
                    <input 
                        type="text" 
                        id="password" 
                        class="fadeIn third" 
                        name="login" 
                        placeholder="password"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}    
                    />
                    { emailError && (
                       <p
                        style={{
                            fontSize: "15px",
                            color: "red",
                            textAlign: "center"
                        }}  
                       >{emailError}</p> 
                    ) }
                    <input 
                    type="submit" 
                    class="fadeIn fourth" 
                    value="se connecter" 
                    />
                </form>
                <div id="formFooter">
                    <img 
                        src={SalamaIcon} 
                        alt="User Icon" 
                        style={{width: '35%', marginRight: "30px", marginLeft: "10px"}}
                     />
                    <img 
                        src={interieurIcon} 
                        alt="User Icon"
                    />
                    <img 
                        src={Tunisie} 
                        alt="User Icon"
                        style={{
                            width: '25%',
                            marginLeft: "30px"
                        }}
                    />
                </div>
            </div>
        </div>
    )
}
