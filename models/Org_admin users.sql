-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models
select *
from users_orgs_roles
Where org_id in
(select orgs_prod.id as org_id
from users_prod
join users_orgs_roles 
on users_prod.id=users_orgs_roles.user_id
join orgs_prod
on orgs_prod.id=users_orgs_roles.org_id
where users_orgs_roles.org_role_id='7ac47d2f-14b7-49ec-9bf7-8953d2e08a18')
