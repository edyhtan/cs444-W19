#!python
import os

standard_lib = []

for dirName, subdirList, fileList in os.walk("stdlib5.0"):
    for fname in fileList:
        if fname[len(fname)-4:] == "java":
            print('\t%s' % fname)

def run_test(file_dir_name):
    standard_lib = "./joosc "
    call_cmd = ""
    
    for i in standard_lib:
        call_cmd = call_cmd + i + " "
    
    if file_dir_name[len(file_dir_name)-4:] == "java":
        call_cmd = call_cmd + file_dir_name
    else:
        for dirName, subdirList, fileList in os.walk(file_dir_name):
            for fname in fileList:
                print('\t%s' % fname)
                call_cmd = call_cmd + fname + " "
    os.system(call_cmd)

run_test("assignment_testcases/custom/play")
