package com.ijoy.plat.mapper;

import java.util.List;

import com.ijoy.plat.domain.TaskItem;
import com.ijoy.plat.query.BaseQuery;

public interface TaskItemMapper {
	public Long insert(TaskItem t);

	public void delete(Long  id);
	public void update(TaskItem t);

	public TaskItem get(Long  id);

	public List<TaskItem> getAll();

	public List<TaskItem> queryRows(BaseQuery query);
	public Long queryTotalCount(BaseQuery baseQuery);
	
	public List<TaskItem> getTaskItemListByTaskId(Long id);

	
}
