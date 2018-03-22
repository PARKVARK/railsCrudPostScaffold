# scaffold, devise, 1:N

# 회원가입 관련 프레임 만들때 개꿀임

CRUD -> Create, Read, Update, Delete 하는 행위

scaffold-> '발판' 이란 뜻으로 데이터베이스 CRUD 생성에 필요한 기본적인 코드를 생성해주는 레일즈 명령어

restful = ( representational state transfer) 표현가능한 상태 이동   
-> 무엇을(resources) 어떻게(HTTP method) 할지를 표현
    
HTTP method -> get(추출), post(생성), patch/put(변경), delete(제거) / 서버에서 정보처리에 편함

resources = CRUD 할수 있는 정보

post는 post_path(id:post.id) 또는 post_path(post)와 같음, 따로 method를 적지 않으면 기본 메소드는 get

# m:n 강의
rails g migration CreateJoinTableHashtagsPosts posts tags
연결테이블을 만드는 주문 
create_join_table_테이블A_테이블B

rails d migration CreateJoinTableHashtagsPosts 하면 생성된 db 삭제

m:n은 has_and_belongs_to_many

# db관련 코드를 입력했을시 터미널창에 
rake db:migrate 를 입력해주어야 한다    

rake db:drop -> db 초기화