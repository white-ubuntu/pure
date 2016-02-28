package com.ijoy.plat.mapper;

import java.util.List;

import com.ijoy.plat.domain.LoginInfo;
import com.ijoy.plat.query.BaseQuery;

public interface LoginInfoMapper {
	public Long insert(LoginInfo  t);

	public void delete(Long  id);
	public void update(LoginInfo t);

	public LoginInfo get(Long  id);

	public List<LoginInfo> getAll();

	public List<LoginInfo> queryRows(BaseQuery query);

	public Long  queryTotalCount(BaseQuery query);	
	
	public LoginInfo findByLogin(LoginInfo loginInfo);
	public LoginInfo checkExistLoginInfoByName(String name);
}
