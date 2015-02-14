package post.inf;

import java.util.List;

import post.pojo.TPostFile;



public interface PostFileInf {
	/**
	 * 添加公告附件
	 * @param postFile
	 * @return
	 */
	public void save(TPostFile transientInstance);
//	/**
//	 * 修改公告附件
//	 * @param postFile
//	 * @return
//	 */
//	public  boolean updatepostFile(TPostFile postFile);
//	/**
//	 * 删除公告附件
//	 * @param postFileId
//	 * @return
//	 */
//	public boolean deletepostFile(int postFileId );
	/**
	 * 删除公告附件
	 * @param postFileId
	 * @return
	 */
	public void delete(TPostFile persistentInstance);
	/**
	 * 获得公告附件列表
	 * @param postid
	 * @return
	 */
	public List findByProperty(String propertyName, Object value);
	/**
	 * 获得单个附件
	 * @param postid
	 * @return
	 */
	public TPostFile findById(java.lang.Integer id);
	

}
