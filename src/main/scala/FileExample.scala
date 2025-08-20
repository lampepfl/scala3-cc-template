import language.experimental.captureChecking

trait File extends caps.SharedCapability:
  def count(): Int

def f(file: File): IterableOnce[Int] = // should've been IterableOnce[Int]^{file}
  Iterator(1)
    .map(_ + file.count())


