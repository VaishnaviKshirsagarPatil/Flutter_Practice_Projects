
import 'package:cricket_player_sqflite/player_model.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

//insert Data
void insertPlayerData(PlayerModel pobj) async{
  Database localDB=await database;
  await localDB.insert(
    "Player",
    pobj.playerMap(),
   conflictAlgorithm: ConflictAlgorithm.replace,

  );
}
//fetch Data
Future<List<Map>> getPlayerData() async{
  Database localDB=await database;
  List<Map> sqfData=await localDB.query(
    "Player",
   columns: ['playerName', 'runs','jerNo'],
  );
  return sqfData;

}

//Update Data
void  updatePlayerData(PlayerModel pobj) async{
  Database localDB=await database;
  localDB.update(
    "Player", 
    pobj.playerMap(),
    where: 'jerNo=?',
    whereArgs: [pobj.jerNo],
  );
}

//Delete data
void  deletePlayerData(int jerNo) async{
   Database localDB=await database;
   localDB.delete(
    "Player",
    where: 'jerNo=?',
    whereArgs: [jerNo]
    );

}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  database=await openDatabase(
   join(await getDatabasesPath(),"Criket.db"),
   version: 1,
   onCreate: (db, version) async{
     await db.execute(
      '''
        CREATE TABLE Player(
        playerName TEXT,
        jerNo INT PRIMARY KEY,
        runs INT,
        avg REAL
        )
     '''
     );
   },
   
  );
  PlayerModel player1=PlayerModel(
    playerName: "Virat", 
    jerNo: 18, 
    runs: 50000,
     avg: 50.33
   );
    PlayerModel player2=PlayerModel(
    playerName: "MSD", 
    jerNo: 7, 
    runs: 40000,
     avg: 30.33
   );

   insertPlayerData(player1);
   insertPlayerData(player2);
   print(await getPlayerData());


  player1=PlayerModel(
  playerName: "Rohit",
  jerNo: player1.jerNo,
  runs: player1.runs+10000,
  avg: player1.avg,
 );
    updatePlayerData(player1);
   print(await getPlayerData());

   deletePlayerData(player1.jerNo);
   print(await getPlayerData());


}