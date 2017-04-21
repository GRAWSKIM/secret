<!doctype html>
<html>
    <head>
        <meta charset="utf-8"/>
        
        
        
        
        <style>
        
            input[type=text]{
            border-color:red;
            border-style: dashed;
            background-color: red;
            color:white;
                
            }
            input[type=text]:hover{
                background-color: white;
                color: red;
            }
        
        </style>
    </head>
    <body>
        <form>
            <fieldset>
            <legend>필수사항</legend>
        
            <label for="id">id</label>
            <input type="text" id="id" name="id" placeholder="id insert" maxlength="5" />
            <br>
            <label for="pw">pw</label>
            <input type="password" id "pw" />
            <label>range</label>
            <input type="range" id="range" value="57" min="1" max="65">
            <br>
            <label for="date">date</label>
            <input type="date" name="day" id="date" value="2017-03-01"/>
            <br>
            <label for="color">color</label>
            <input type="color" id="color"/>
            <input type="submit" value="입력" id="color"/>
            <br>
            <label for="email">email</label>
            <input type="email" id="email" name="email";>
            <br>
                    </fieldset>
             <fieldset>
            <legend>필수사항</legend>
            <label for="sel">선택</label>
            <select id="sel" name ="sel">
                <option>a1</option>
                <option>a2</option>
                <option>a3</option>
                <option>a4</option>
                
            </select>
            <label for="se12">입력선택</label>
            <input list="list" id="se12"/>
               <br>
            <datalist id='list'>
                <option value="1">a1</option>
                <option value="2">a2</option>
                <option value="3">a3</option>
                <option value="4">a4</option>
            
            </datalist>
            
                <textarea>as
                </textarea>
                
                </fieldset>
            <table>
                <tr>
                    <td>
             <input type="button" id="sel" value="입력"/>
                    </td>
               <td>
             <input type="button" id="sel" value="입력"/>
                    </td>
                </tr>
                  </table>
            <br>
            <br>
             <input type="button" id="sel" value="입력"/>
             <input type="button" id="sel" value="입력"/>
            <br>
            <br>
            <button type="submit">입력</button>
            <button type="reset">비우기</button>
            <input type="submit" value="tnwjd" formaction="edit.html"/>
        </form>
    </body>
</html>