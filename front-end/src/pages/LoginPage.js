import React from 'react'
import "../assets/css/loginpage.css"
import userIcon from "../assets/img/user.png"
import SalamaIcon from "../assets/img/salama.jpg"
import interieurIcon from "../assets/img/armoirie.png"
import Tunisie from "../assets/img/tunisie.png"

export default function LoginPage() {
    return (
        <div className="wrapper fadeInDown">
            <div id="formContent">
                <div className="fadeIn first">
                    <img src={userIcon} id="icon" alt="User Icon" />
                </div>
                <form>
                    <input type="text" id="login" class="fadeIn second" name="login" placeholder="login" />
                    <input type="text" id="password" class="fadeIn third" name="login" placeholder="password" />
                    <input type="submit" class="fadeIn fourth" value="Log In" />
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
