package pack.model;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;   //mybatis ����
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import pack.controller.SangpumBean;

@Repository
public class SangpumImpl extends SqlSessionDaoSupport implements SangpumInter{
   @Autowired
   public SangpumImpl(SqlSessionFactory factory) {   //�θ𿡰� �� �� => contructor injection !! (setter injection X)
      setSqlSessionFactory(factory);
   }

   @Override
   public List<SangpumDto> list() throws DataAccessException {
      return getSqlSession().selectList("selectDataAll");   //selectDataAll : DataMapper.xml�� id
   }
   
   @Override
   public List<SangpumDto> search(SangpumBean bean) throws DataAccessException {
	   return getSqlSession().selectList("selectSearch", bean); 
   }
}