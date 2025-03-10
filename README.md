<h1>Laravel Project Management - APIs and Passport Integration</h1>

<h2>Installation / Configure</h2>
<ul>
    <li>Open terminal and run the following commands:
        <ul>
            <li>Requires the `php version 8.2 or higher` and `composer` installed</li>
            <li>clone the repo from the given link</li>
            <li>composer install / composer update</li>
            <li>cp .env.example .env and update the `DB` variables</li>
            <li>`php artisan key:generate` if not already created</li>
            <li>`php artisan migrate`</li>
            <li>`php artisan db:seed`</li>
            <li>`php artisan db:seed --class=AttributesAndValuesSeeder`</li>
            <li>Set permission to bootstrap and storage directories e.g. `Sudo chmod -R 777 bootstrap` and `Sudo chmod -R 777 storage`</li>
            <li>`php artisan passport:client –personal`</li>
            <li>Mysql Dump also added to `database/dump` directory</li>
            <li>`Postman` API collection and `environment` added to `postman` directory</li>
            <li>As it happens with laravel app at local like sometimes changes are not visible at browser so try `php artisan optimize`, `php artisan config:clear`, `php artisan cache:clear` etc..</li>
            <li>As it mainly focuses on the API base structure so frontend side work isnt added but you may run the `npm install` and `npm run dev` to see the homepage and the `auth routes`</li>
        </ul>
    </li>
</ul>

<h2>Note:</h2>
Plan was to add Permissions and Roles to restrict the routes access but due to time constraints I could not add them.

<h2>APIs:</h2>
<ul>
    <li>Authorisation using `Passport`</li> 
    <li>CRUD operations</li>
    <li>Filter</li>
    <li>Sort</li>
    <li>Pagination</li>
    <li>API Documentation using `Postman`</li>
</ul>

<h5>Sample APIS Request / Response - See the `postman` directory</h5>
