import * as actionTypes from './actionTypes';
import axios from 'axios';

export const authStart = () => {
  return {
    type: actionTypes.AUTH_START
  };
};

export const authSuccess = (authData) => {
  return {
    type: actionTypes.AUTH_SUCCESS,
    authData: authData
  }
};

export const authFailure = (error) => {
  return {
    type: actionTypes.AUTH_FAILURE,
    error: error
  }
};

export const auth = (email, password, isSignup) => {
  return dispatch => {
    dispatch(authStart());
    const authData = {
      email: email,
      password: password,
      returnSecureToken: true
    };
    let url = 'https://www.googleapis.com/identitytoolkit/v3/relyingparty/signupNewUser?key=AIzaSyArbu8C9FwfSYAPuJ93Ev47LdDBuQj1Ejs';
    if (!isSignup) {
      url = 'https://www.googleapis.com/identitytoolkit/v3/relyingparty/verifyPassword?key=AIzaSyArbu8C9FwfSYAPuJ93Ev47LdDBuQj1Ejs';
    }
    axios.post(url, authData)
      .then(response => {
        console.log(response);
        dispatch(authSuccess(response.data))
      })
      .catch(error => {
        console.log(error);
        dispatch(authFailure(error));
      });
  }
};