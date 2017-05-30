 create or replace view dm_BankUserSecurity as select 
_sys_transform_id,
TenantId,
BankUserSecurityId,
UserId,
BankId
from out_BankUserSecurity 
 where _sys_transform_id = (select max(id) from _sys_transform_id where ts_end is not null and entity = 'dm_BankUserSecurity');
