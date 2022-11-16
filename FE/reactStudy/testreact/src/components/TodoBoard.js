import React from "react"
import TodoItem from "./TodoItem"

function TodoBoard(props){
  console.log("TodoBoard", props.todoList)
  //map : 어레이에 있는 아이템을 하나하나 꺼내와서 아이템으로 반환
  return (
    <div className="todoBoard">
      <h1>List</h1>

      {props.todoList.map((item)=><TodoItem item ={item} />)}
      

      <TodoItem />

    </div>
  )
}

export default TodoBoard //수출