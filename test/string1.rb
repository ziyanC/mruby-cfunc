mobiruby_test "CFunc::String1" do
  str = "STRING"
  ptr = CFunc::Pointer.malloc(7)

  CFunc::call(CFunc::Void, "strcpy", ptr, str)
  assert_equal "STRING", ptr.to_s
end
