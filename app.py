"""QUOTABYPASS-01 re-test fixture (lane REVAL 2026-09-28) — real uid->SQL-concat sink."""
import sqlite3

DB = sqlite3.connect("orders.db")


def get_order(request):
    uid = request.args.get("uid")
    query = "SELECT * FROM orders WHERE uid = " + str(uid)
    cursor = DB.execute(query)
    return cursor.fetchall()

# REVAL: second commit pushed while allowance window under observation (auto-review event probe)
# REVAL quota probe C: drive included-allowance to zero (auto-review event)
# REVAL quota probe D: expect review under exhausted allowance (fail-open observation)
