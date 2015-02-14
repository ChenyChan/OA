package post.inf;

import java.sql.Clob;
import java.util.List;

import post.pojo.TPost;



public interface PostInf {
	/**
	 * 添加公告
	 * @param postBean
	 * @return
	 */
	
	public void saveOrUpdate(TPost post);
	public void saveOrUpdate(TPost post,String content);
	public int save(TPost post,String content);
	
	/**
	 * 修改公告
	 * @param postid
	 * @return
	 */
	
//	public boolean updatepost(TPost postBean);
	/**
	 * 获得公告
	 * @param postid
	 * @return
	 */
	
	public TPost findById(java.lang.Integer id);
	/**
	 * 获得公告列表
	 * @return
	 */
	
	public List findAll();
//	/**
//	 * 
//	 * @return
//	 */
	public void delete(TPost persistentInstance);
	public List findByProperty(String propertyName, Object value);
	public List findByPropertyDESC(String propertyName, Object value);
	public List findBystitledate(String stitle,String nowdate, String begindate, String enddate ,String nstatus) ;
}
