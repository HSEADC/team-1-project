// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
import { getFirestore } from "firebase/firestore";
import {getAuth, GoogleAuthProvider } from 'firebase/auth'
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyAYDEhXFyJICeaYzlqJkmTGHIa2RBUip44",
  authDomain: "communa-82a0e.firebaseapp.com",
  projectId: "communa-82a0e",
  storageBucket: "communa-82a0e.appspot.com",
  messagingSenderId: "685266334030",
  appId: "1:685266334030:web:a2b81f50121a80261b2e1f",
  measurementId: "G-L6JCHXDDB0"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);

export const db = getFirestore(app)
export const auth = getAuth(app)
export const provider = new GoogleAuthProvider()
