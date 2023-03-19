import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = 'https://qmwscwbmjyfwlccikrqf.supabase.co';

// use your own SUPABASE_SECRET key
const String SUPABASE_SECRET =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFtd3Njd2Jtanlmd2xjY2lrcnFmIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY0OTE3MjA5OCwiZXhwIjoxOTY0NzQ4MDk4fQ.gfDpEhLlfxs9-sc89-ZF3sBIlWGVN2G-2W3KKYh3xeA';

final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);
