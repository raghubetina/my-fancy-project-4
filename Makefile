build: generate-paper
.PHONY: build

clean-data:
	@echo "Cleaning data."

run-analysis:
	@echo "Running analysis."

move-images:
	@echo "Moving images."

generate-paper: clean-data run-analysis move-images
	@echo "Generating paper."

clean:
	rm -rf data/cleaned
	rm -rf artifacts
.PHONY: clean
