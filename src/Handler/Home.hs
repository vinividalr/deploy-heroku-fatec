{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}
module Handler.Home where

import Import
--import Network.HTTP.Types.Status
--import Database.Persist.Postgresql

getHomeR :: Handler Html
getHomeR = do
    defaultLayout $ do
        toWidgetHead [julius|
            function teste(){
                alert("oi")
            }
        |]
        toWidgetHead [lucius|
            .topnav {
              background-color: #333;
              overflow: hidden;
            }
            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }
            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }
            .topnav a.active {
              background-color: #04AA6D;
              color: white;
            }  
        |]

        [whamlet|
            <div class="topnav">
                <a class="active" href="/">
                    HOME
                <a href="/noticias">
                    NOTICIAS
                <a href="/contato">
                    CONTATO
            <h1>
                HOME
            <button onclick="teste()">
                OK
        |]


getNoticiasR :: Handler Html
getNoticiasR = do
    defaultLayout $ do
        toWidgetHead [julius|
            function teste(){
                alert("oi")
            }
        |]
        toWidgetHead [lucius|
            .topnav {
              background-color: #333;
              overflow: hidden;
            }
            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }
            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }
            .topnav a.active {
              background-color: #04AA6D;
              color: white;
            }  
        |]

        [whamlet|
            <div class="topnav">
                <a href="/">
                    HOME
                <a class="active" href="/noticias">
                    NOTICIAS
                <a href="/contato">
                    CONTATO
            <h1>
                NOTICIAS
            <button onclick="teste()">
                OK
        |]



getContatoR :: Handler Html
getContatoR = do
    defaultLayout $ do
        toWidgetHead [julius|
            function teste(){
                alert("oi")
            }
        |]
        toWidgetHead [lucius|
            .topnav {
              background-color: #333;
              overflow: hidden;
            }
            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }
            .topnav a:hover {
                background-color: #ddd;
                color: black;
            }
            .topnav a.active {
              background-color: #04AA6D;
              color: white;
            }  
        |]

        [whamlet|
            <div class="topnav">
                <a href="/">
                    HOME
                <a href="/noticias">
                    NOTICIAS
                <a class="active" href="/contato">
                    CONTATO
            <h1>
                CONTATO
            <button onclick="teste()">
                OK
        |]