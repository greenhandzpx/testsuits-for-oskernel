from test_base import TestBase
import re


class statx_test(TestBase):
    def __init__(self):
        super().__init__("statx", 3)

    def test(self, data):
        self.assert_ge(len(data), 2)
        res = re.findall("statx ret: (\d+)", data[0])
        if res:
            self.assert_equal(res[0], "0")
        res = re.findall(r"statx: dev: \d+, inode: \d+, mode: (\d+), size: \d+, atime: \d+, mtime: \d+, ctime: \d+", data[1])
        if res:
            self.assert_equal(res[0][3], "52")