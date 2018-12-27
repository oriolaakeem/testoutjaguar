import 'dart:async';
import 'dart:convert';
import 'package:jaguar/jaguar.dart';
import 'package:mongo_dart/mongo_dart.dart';

import 'package:jaguar_mongo/jaguar_mongo.dart';

/// Mongo Pool
final mongoPool = MongoPool('mongodb://localhost:27017/ContactDb');

@GenController(path: '/contact')
class ContactApi extends Controller {

  @GetJson()
  @Get()
  Future<String> readAll(Context ctx) async {
    Db db = await mongoPool(ctx); // Get [Db]
    // Use Db to fetch items
    return JsonEncoder().convert( await (await db.collection('contact').find()).toList());
  }

  @Post()
  Future<List> add(Context ctx) async {
    Map body = await ctx.bodyAsJsonMap();
    Db db = await mongoPool(ctx);
    await db.collection('contact').insert(body);
    return await (await db.collection('contact').find()).toList();
  }
}