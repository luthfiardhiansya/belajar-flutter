
import 'package:flutter/material.dart';

import 'package:lutfi/container_widget/poster_widget.dart';
import 'package:lutfi/container_widget/latihan_container.dart';
import 'package:lutfi/latihan_kelompok/latihan_kelompok.dart';
import 'package:lutfi/latihan_mandiri/latihan_pertama.dart';
import 'package:lutfi/list_view/latihan_list1.dart';
import 'package:lutfi/navigation/menu.dart';
import 'package:lutfi/pages/album_page.dart';
import 'package:lutfi/pages/form_input_page.dart';
import 'package:lutfi/pages/form_input_pengaduan.dart';
import 'package:lutfi/row_column_widget/row_column.dart';
import 'package:lutfi/size_box_stack/LatihanPakaceDua.dart';

class AppRoute {
  static const menu = '/';
  static const list = '/list';
  static const grid = '/grid';
  static const container = '/container';
  static const mandiri = '/latihan_mandiri';
  static const kelompok = '/latihan_kelompok';
  static const listView = '/list_view';
  static const containerWidget = '/container_widget';
  static const rowColumnWidget = '/row_column_widget';
  static const sizeBoxStack = '/size_box_stack';
  static const formulir = '/pages';
  static const album = '/pages';

  static final Map<String, WidgetBuilder> routes = {
    menu: (context) => const Menu(),
    list: (context) => LatihanList1(),
    grid: (context) => LatihanKelompok(),
    container: (context) => const PosterContainer(),
    mandiri: (context) => const LatihanPertama(),
    kelompok: (context) => LatihanKelompok(),
    listView: (context) => LatihanList1(),
    containerWidget: (context) => const LatihanContainer(),
    rowColumnWidget: (context) => const RowColumnWidget(),
    sizeBoxStack: (context) => LatihanPakaceDua(),
    formulir: (context) => const Pengaduan(),
    album:(context) => const AlbumPage(),
  };
}
