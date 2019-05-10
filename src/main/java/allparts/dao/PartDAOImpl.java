package allparts.dao;
import allparts.model.Part;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@Repository
public class PartDAOImpl implements PartDAO {
//    private static final AtomicInteger AUTO_ID = new AtomicInteger(0);
//    private static Map<Integer, Part> parts = new HashMap<>();

    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Part> allParts(int page) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Part").setFirstResult(10 * (page - 1)).setMaxResults(10).list();
    }

    @Override
    public void add(Part part) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(part);
    }

    @Override
    public void delete(Part part) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(part);
    }

    @Override
    public void edit(Part part) {
        Session session = sessionFactory.getCurrentSession();
        session.update(part);
    }

    @Override
    public Part getById(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Part.class, id);
    }

    @Override
    public int partsCount() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("select count(*) from Part", Number.class).getSingleResult().intValue();
    }

    @Override
    public Part findPart(String namePart) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Part.class);
        List<Part> listUser = criteria.add(Restrictions.like("namePart", namePart, MatchMode.ANYWHERE)).list();
        Part part = null;
        try{
            part = listUser.get(0);
        } catch (Exception e){
            return null;
        }
        return part;
    }

    @Override
    public List<Part> sortPart(boolean condition) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Part.class);
        List<Part> listPart = criteria.add(Restrictions.eq("need", condition)).list();
        return listPart;
    }
}
