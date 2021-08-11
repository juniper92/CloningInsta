//
//  Constants.swift
//  InsCloning
//
//  Created by HI on 2021/08/11.
//


/* 사용자의 컬렉션(파베)과 같이 응용프로그램에 변경되지 않는 상수가 있는 경우 응용프로그램의 수명 주기 동안 계속 유지된다. */
import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
