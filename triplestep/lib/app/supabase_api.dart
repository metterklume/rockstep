import 'package:supabase/supabase.dart';

// use your own SUPABASE_URL
const String SUPABASE_URL = 'https://qmwscwbmjyfwlccikrqf.supabase.co';

// use your own SUPABASE_SECRET key
const String SUPABASE_SECRET =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFtd3Njd2Jtanlmd2xjY2lrcnFmIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY0OTA3NjQ1NCwiZXhwIjoxOTY0NjUyNDU0fQ.Q3Vu3BJwzZfXuiqSAEJBtr8-C7JfkTMcLtdihfJ3Z80';

final SupabaseClient supabase = SupabaseClient(SUPABASE_URL, SUPABASE_SECRET);
