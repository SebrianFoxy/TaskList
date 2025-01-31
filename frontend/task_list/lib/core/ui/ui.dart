import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:task_manager_mobile/main.dart';
import 'package:task_manager_mobile/presenter/calendar/bloc/calendar_bloc.dart';
import 'package:task_manager_mobile/presenter/login/bloc/login_bloc.dart';
import 'package:task_manager_mobile/presenter/settings/theme/cubit/theme_cubit.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';



//Карточки
part 'card/task_card.dart';
part 'card/calendar_card.dart';
part 'card/time_now_card.dart';
part 'card/profile_auth_card.dart';
part 'card/profile_unauth_card.dart';

// Кнопки
part 'button/add_task_button.dart';
part 'button/bottom_navigation_bar.dart';
part 'button/create_account_button.dart';

//Диалоги
part 'dialog/dialog_add_task.dart';
part 'dialog/dialog_delete_task.dart';
part 'dialog/dialog_error.dart';

//Инпуты
part 'input/calendar_input.dart';
part 'input/time_input.dart';
