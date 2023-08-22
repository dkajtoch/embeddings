from transformers import AutoConfig, AutoModel, AutoTokenizer

MODEL = "clarin-pl/long-former-polish"

config = AutoConfig.from_pretrained(MODEL)
tokenizer = AutoTokenizer.from_pretrained(MODEL)
model = AutoModel.from_pretrained(MODEL, ignore_mismatched_sizes=True)

encoded_input = tokenizer.encode("Zażółć gęślą jaźń", return_tensors="pt")
outputs = model(encoded_input)
