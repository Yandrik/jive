# Build stage
FROM rust:latest AS builder
WORKDIR /usr/src/app
COPY . .
RUN cargo build --bin actors --release

# Runtime stage
FROM archlinux:base-20231112.0.191179 AS main
WORKDIR /app
COPY --from=builder /usr/src/app/target/release/actors /app/actors

EXPOSE 8080

CMD ["./actors"]
