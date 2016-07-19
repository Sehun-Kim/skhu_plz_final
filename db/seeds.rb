# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Major.create(name: '경영학부')
Major.create(name: '영어학과')
Major.create(name: '글로컬아이티학과')
Major.create(name: '정보통신학과')

Lecture.create(name: 'MIS', major_id:'1', professor_id:'2')
Lecture.create(name: '마케팅', major_id:'1', professor_id:'1')
Lecture.create(name: '경영영어', major_id:'1', professor_id:'2')
Lecture.create(name: '마조론', major_id:'1', professor_id:'1')
Lecture.create(name: '아이티개론', major_id:'3', professor_id:'4')
Lecture.create(name: '자바', major_id:'3', professor_id:'6')
Lecture.create(name: 'c언어', major_id:'4', professor_id:'5')
Lecture.create(name: '자료구조론', major_id:'4', professor_id:'5')
Lecture.create(name: '시분설', major_id:'3', professor_id:'7')
Lecture.create(name: '기초프로젝트', major_id:'3', professor_id:'7')
Lecture.create(name: '실무프로젝트', major_id:'4', professor_id:'3')
Lecture.create(name: '기초문법', major_id:'2', professor_id:'8')
Lecture.create(name: '기초회화', major_id:'2', professor_id:'3')
Lecture.create(name: '영문학의 이해', major_id:'2', professor_id:'8')
Lecture.create(name: '영어듣기평가', major_id:'2', professor_id:'6')
Lecture.create(name: '컴퓨터기초', major_id:'4', professor_id:'4')

Professor.create(name: '이상훈')
Professor.create(name: '장승권')
Professor.create(name: '김세훈')
Professor.create(name: '정지원')
Professor.create(name: '김명철')
Professor.create(name: '김정기')
Professor.create(name: '김은석')
Professor.create(name: '강다솜')

