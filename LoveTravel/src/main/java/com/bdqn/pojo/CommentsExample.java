package com.bdqn.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CommentsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CommentsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andHotelidIsNull() {
            addCriterion("hotelId is null");
            return (Criteria) this;
        }

        public Criteria andHotelidIsNotNull() {
            addCriterion("hotelId is not null");
            return (Criteria) this;
        }

        public Criteria andHotelidEqualTo(Integer value) {
            addCriterion("hotelId =", value, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidNotEqualTo(Integer value) {
            addCriterion("hotelId <>", value, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidGreaterThan(Integer value) {
            addCriterion("hotelId >", value, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidGreaterThanOrEqualTo(Integer value) {
            addCriterion("hotelId >=", value, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidLessThan(Integer value) {
            addCriterion("hotelId <", value, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidLessThanOrEqualTo(Integer value) {
            addCriterion("hotelId <=", value, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidIn(List<Integer> values) {
            addCriterion("hotelId in", values, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidNotIn(List<Integer> values) {
            addCriterion("hotelId not in", values, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidBetween(Integer value1, Integer value2) {
            addCriterion("hotelId between", value1, value2, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelidNotBetween(Integer value1, Integer value2) {
            addCriterion("hotelId not between", value1, value2, "hotelid");
            return (Criteria) this;
        }

        public Criteria andHotelnameIsNull() {
            addCriterion("hotelName is null");
            return (Criteria) this;
        }

        public Criteria andHotelnameIsNotNull() {
            addCriterion("hotelName is not null");
            return (Criteria) this;
        }

        public Criteria andHotelnameEqualTo(String value) {
            addCriterion("hotelName =", value, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameNotEqualTo(String value) {
            addCriterion("hotelName <>", value, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameGreaterThan(String value) {
            addCriterion("hotelName >", value, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameGreaterThanOrEqualTo(String value) {
            addCriterion("hotelName >=", value, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameLessThan(String value) {
            addCriterion("hotelName <", value, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameLessThanOrEqualTo(String value) {
            addCriterion("hotelName <=", value, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameLike(String value) {
            addCriterion("hotelName like", value, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameNotLike(String value) {
            addCriterion("hotelName not like", value, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameIn(List<String> values) {
            addCriterion("hotelName in", values, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameNotIn(List<String> values) {
            addCriterion("hotelName not in", values, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameBetween(String value1, String value2) {
            addCriterion("hotelName between", value1, value2, "hotelname");
            return (Criteria) this;
        }

        public Criteria andHotelnameNotBetween(String value1, String value2) {
            addCriterion("hotelName not between", value1, value2, "hotelname");
            return (Criteria) this;
        }

        public Criteria andCleanscoreIsNull() {
            addCriterion("cleanScore is null");
            return (Criteria) this;
        }

        public Criteria andCleanscoreIsNotNull() {
            addCriterion("cleanScore is not null");
            return (Criteria) this;
        }

        public Criteria andCleanscoreEqualTo(Integer value) {
            addCriterion("cleanScore =", value, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreNotEqualTo(Integer value) {
            addCriterion("cleanScore <>", value, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreGreaterThan(Integer value) {
            addCriterion("cleanScore >", value, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("cleanScore >=", value, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreLessThan(Integer value) {
            addCriterion("cleanScore <", value, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreLessThanOrEqualTo(Integer value) {
            addCriterion("cleanScore <=", value, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreIn(List<Integer> values) {
            addCriterion("cleanScore in", values, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreNotIn(List<Integer> values) {
            addCriterion("cleanScore not in", values, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreBetween(Integer value1, Integer value2) {
            addCriterion("cleanScore between", value1, value2, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andCleanscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("cleanScore not between", value1, value2, "cleanscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreIsNull() {
            addCriterion("locationScore is null");
            return (Criteria) this;
        }

        public Criteria andLocationscoreIsNotNull() {
            addCriterion("locationScore is not null");
            return (Criteria) this;
        }

        public Criteria andLocationscoreEqualTo(Integer value) {
            addCriterion("locationScore =", value, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreNotEqualTo(Integer value) {
            addCriterion("locationScore <>", value, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreGreaterThan(Integer value) {
            addCriterion("locationScore >", value, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("locationScore >=", value, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreLessThan(Integer value) {
            addCriterion("locationScore <", value, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreLessThanOrEqualTo(Integer value) {
            addCriterion("locationScore <=", value, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreIn(List<Integer> values) {
            addCriterion("locationScore in", values, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreNotIn(List<Integer> values) {
            addCriterion("locationScore not in", values, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreBetween(Integer value1, Integer value2) {
            addCriterion("locationScore between", value1, value2, "locationscore");
            return (Criteria) this;
        }

        public Criteria andLocationscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("locationScore not between", value1, value2, "locationscore");
            return (Criteria) this;
        }

        public Criteria andServicescoreIsNull() {
            addCriterion("serviceScore is null");
            return (Criteria) this;
        }

        public Criteria andServicescoreIsNotNull() {
            addCriterion("serviceScore is not null");
            return (Criteria) this;
        }

        public Criteria andServicescoreEqualTo(Integer value) {
            addCriterion("serviceScore =", value, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreNotEqualTo(Integer value) {
            addCriterion("serviceScore <>", value, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreGreaterThan(Integer value) {
            addCriterion("serviceScore >", value, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("serviceScore >=", value, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreLessThan(Integer value) {
            addCriterion("serviceScore <", value, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreLessThanOrEqualTo(Integer value) {
            addCriterion("serviceScore <=", value, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreIn(List<Integer> values) {
            addCriterion("serviceScore in", values, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreNotIn(List<Integer> values) {
            addCriterion("serviceScore not in", values, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreBetween(Integer value1, Integer value2) {
            addCriterion("serviceScore between", value1, value2, "servicescore");
            return (Criteria) this;
        }

        public Criteria andServicescoreNotBetween(Integer value1, Integer value2) {
            addCriterion("serviceScore not between", value1, value2, "servicescore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreIsNull() {
            addCriterion("envScore is null");
            return (Criteria) this;
        }

        public Criteria andEnvscoreIsNotNull() {
            addCriterion("envScore is not null");
            return (Criteria) this;
        }

        public Criteria andEnvscoreEqualTo(Integer value) {
            addCriterion("envScore =", value, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreNotEqualTo(Integer value) {
            addCriterion("envScore <>", value, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreGreaterThan(Integer value) {
            addCriterion("envScore >", value, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("envScore >=", value, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreLessThan(Integer value) {
            addCriterion("envScore <", value, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreLessThanOrEqualTo(Integer value) {
            addCriterion("envScore <=", value, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreIn(List<Integer> values) {
            addCriterion("envScore in", values, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreNotIn(List<Integer> values) {
            addCriterion("envScore not in", values, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreBetween(Integer value1, Integer value2) {
            addCriterion("envScore between", value1, value2, "envscore");
            return (Criteria) this;
        }

        public Criteria andEnvscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("envScore not between", value1, value2, "envscore");
            return (Criteria) this;
        }

        public Criteria andCommentinfoIsNull() {
            addCriterion("commentInfo is null");
            return (Criteria) this;
        }

        public Criteria andCommentinfoIsNotNull() {
            addCriterion("commentInfo is not null");
            return (Criteria) this;
        }

        public Criteria andCommentinfoEqualTo(String value) {
            addCriterion("commentInfo =", value, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoNotEqualTo(String value) {
            addCriterion("commentInfo <>", value, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoGreaterThan(String value) {
            addCriterion("commentInfo >", value, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoGreaterThanOrEqualTo(String value) {
            addCriterion("commentInfo >=", value, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoLessThan(String value) {
            addCriterion("commentInfo <", value, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoLessThanOrEqualTo(String value) {
            addCriterion("commentInfo <=", value, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoLike(String value) {
            addCriterion("commentInfo like", value, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoNotLike(String value) {
            addCriterion("commentInfo not like", value, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoIn(List<String> values) {
            addCriterion("commentInfo in", values, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoNotIn(List<String> values) {
            addCriterion("commentInfo not in", values, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoBetween(String value1, String value2) {
            addCriterion("commentInfo between", value1, value2, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andCommentinfoNotBetween(String value1, String value2) {
            addCriterion("commentInfo not between", value1, value2, "commentinfo");
            return (Criteria) this;
        }

        public Criteria andTotalscoreIsNull() {
            addCriterion("totalScore is null");
            return (Criteria) this;
        }

        public Criteria andTotalscoreIsNotNull() {
            addCriterion("totalScore is not null");
            return (Criteria) this;
        }

        public Criteria andTotalscoreEqualTo(Integer value) {
            addCriterion("totalScore =", value, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreNotEqualTo(Integer value) {
            addCriterion("totalScore <>", value, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreGreaterThan(Integer value) {
            addCriterion("totalScore >", value, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("totalScore >=", value, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreLessThan(Integer value) {
            addCriterion("totalScore <", value, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreLessThanOrEqualTo(Integer value) {
            addCriterion("totalScore <=", value, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreIn(List<Integer> values) {
            addCriterion("totalScore in", values, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreNotIn(List<Integer> values) {
            addCriterion("totalScore not in", values, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreBetween(Integer value1, Integer value2) {
            addCriterion("totalScore between", value1, value2, "totalscore");
            return (Criteria) this;
        }

        public Criteria andTotalscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("totalScore not between", value1, value2, "totalscore");
            return (Criteria) this;
        }

        public Criteria andCreatebyIsNull() {
            addCriterion("createBy is null");
            return (Criteria) this;
        }

        public Criteria andCreatebyIsNotNull() {
            addCriterion("createBy is not null");
            return (Criteria) this;
        }

        public Criteria andCreatebyEqualTo(Integer value) {
            addCriterion("createBy =", value, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyNotEqualTo(Integer value) {
            addCriterion("createBy <>", value, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyGreaterThan(Integer value) {
            addCriterion("createBy >", value, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyGreaterThanOrEqualTo(Integer value) {
            addCriterion("createBy >=", value, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyLessThan(Integer value) {
            addCriterion("createBy <", value, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyLessThanOrEqualTo(Integer value) {
            addCriterion("createBy <=", value, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyIn(List<Integer> values) {
            addCriterion("createBy in", values, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyNotIn(List<Integer> values) {
            addCriterion("createBy not in", values, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyBetween(Integer value1, Integer value2) {
            addCriterion("createBy between", value1, value2, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatebyNotBetween(Integer value1, Integer value2) {
            addCriterion("createBy not between", value1, value2, "createby");
            return (Criteria) this;
        }

        public Criteria andCreatedateIsNull() {
            addCriterion("createDate is null");
            return (Criteria) this;
        }

        public Criteria andCreatedateIsNotNull() {
            addCriterion("createDate is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedateEqualTo(Date value) {
            addCriterion("createDate =", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotEqualTo(Date value) {
            addCriterion("createDate <>", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateGreaterThan(Date value) {
            addCriterion("createDate >", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateGreaterThanOrEqualTo(Date value) {
            addCriterion("createDate >=", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateLessThan(Date value) {
            addCriterion("createDate <", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateLessThanOrEqualTo(Date value) {
            addCriterion("createDate <=", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateIn(List<Date> values) {
            addCriterion("createDate in", values, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotIn(List<Date> values) {
            addCriterion("createDate not in", values, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateBetween(Date value1, Date value2) {
            addCriterion("createDate between", value1, value2, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotBetween(Date value1, Date value2) {
            addCriterion("createDate not between", value1, value2, "createdate");
            return (Criteria) this;
        }

        public Criteria andModifybyIsNull() {
            addCriterion("modifyBy is null");
            return (Criteria) this;
        }

        public Criteria andModifybyIsNotNull() {
            addCriterion("modifyBy is not null");
            return (Criteria) this;
        }

        public Criteria andModifybyEqualTo(Integer value) {
            addCriterion("modifyBy =", value, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyNotEqualTo(Integer value) {
            addCriterion("modifyBy <>", value, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyGreaterThan(Integer value) {
            addCriterion("modifyBy >", value, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyGreaterThanOrEqualTo(Integer value) {
            addCriterion("modifyBy >=", value, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyLessThan(Integer value) {
            addCriterion("modifyBy <", value, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyLessThanOrEqualTo(Integer value) {
            addCriterion("modifyBy <=", value, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyIn(List<Integer> values) {
            addCriterion("modifyBy in", values, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyNotIn(List<Integer> values) {
            addCriterion("modifyBy not in", values, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyBetween(Integer value1, Integer value2) {
            addCriterion("modifyBy between", value1, value2, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifybyNotBetween(Integer value1, Integer value2) {
            addCriterion("modifyBy not between", value1, value2, "modifyby");
            return (Criteria) this;
        }

        public Criteria andModifydateIsNull() {
            addCriterion("modifyDate is null");
            return (Criteria) this;
        }

        public Criteria andModifydateIsNotNull() {
            addCriterion("modifyDate is not null");
            return (Criteria) this;
        }

        public Criteria andModifydateEqualTo(Date value) {
            addCriterion("modifyDate =", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateNotEqualTo(Date value) {
            addCriterion("modifyDate <>", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateGreaterThan(Date value) {
            addCriterion("modifyDate >", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateGreaterThanOrEqualTo(Date value) {
            addCriterion("modifyDate >=", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateLessThan(Date value) {
            addCriterion("modifyDate <", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateLessThanOrEqualTo(Date value) {
            addCriterion("modifyDate <=", value, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateIn(List<Date> values) {
            addCriterion("modifyDate in", values, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateNotIn(List<Date> values) {
            addCriterion("modifyDate not in", values, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateBetween(Date value1, Date value2) {
            addCriterion("modifyDate between", value1, value2, "modifydate");
            return (Criteria) this;
        }

        public Criteria andModifydateNotBetween(Date value1, Date value2) {
            addCriterion("modifyDate not between", value1, value2, "modifydate");
            return (Criteria) this;
        }

        public Criteria andOrdernoIsNull() {
            addCriterion("orderNo is null");
            return (Criteria) this;
        }

        public Criteria andOrdernoIsNotNull() {
            addCriterion("orderNo is not null");
            return (Criteria) this;
        }

        public Criteria andOrdernoEqualTo(String value) {
            addCriterion("orderNo =", value, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoNotEqualTo(String value) {
            addCriterion("orderNo <>", value, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoGreaterThan(String value) {
            addCriterion("orderNo >", value, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoGreaterThanOrEqualTo(String value) {
            addCriterion("orderNo >=", value, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoLessThan(String value) {
            addCriterion("orderNo <", value, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoLessThanOrEqualTo(String value) {
            addCriterion("orderNo <=", value, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoLike(String value) {
            addCriterion("orderNo like", value, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoNotLike(String value) {
            addCriterion("orderNo not like", value, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoIn(List<String> values) {
            addCriterion("orderNo in", values, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoNotIn(List<String> values) {
            addCriterion("orderNo not in", values, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoBetween(String value1, String value2) {
            addCriterion("orderNo between", value1, value2, "orderno");
            return (Criteria) this;
        }

        public Criteria andOrdernoNotBetween(String value1, String value2) {
            addCriterion("orderNo not between", value1, value2, "orderno");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}