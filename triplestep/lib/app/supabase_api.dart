import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = 'https://qmwscwbmjyfwlccikrqf.supabase.co';

// use your own SUPABASE_SECRET key
const String SUPABASE_SECRET = 'ADD_SECRET';

final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);
