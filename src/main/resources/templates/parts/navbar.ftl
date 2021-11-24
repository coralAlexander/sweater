<#include "security.ftl">
<#import "login.ftl" as l >
<nav class="navbar navbar-expand-lg navbar-light bg-light main-nav">
    <a class="navbar-brand" href="/">Build Helper</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="main">Messages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/contractor">Contractors List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/info">Info</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/spec">Требуемые специалисты</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="/allbuildsteps">Все расходы </a>
            </li>
        </ul>
        <li class="nav-item">
            <div class="dropdown">
                <button class="btn btn-primary ml-2 dropdown-toggle btn-navbar" type="button"
                        id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${name}
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <#if isAdmin>
                        <a class="nav-link" href="/user">User list</a>
                    </#if>
                    <#if name !="unknown">
                        <@l.logout />
                    </#if>
                </div>
            </div>
        </li>
    </div>
</nav>

<style>
    .dropdown{
        padding-left: 20px;
    }
</style>