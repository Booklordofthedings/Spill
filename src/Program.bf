using System;
using System.IO;
namespace Spill
{
	class Program
	{
		public static void Main(String[] args)
		{
			if(!(args.Count > 0))
				return; // No fitting argument

			if(!Directory.Exists(args[0]))
				return; // Wrong argument

			String target = Path.GetDirectoryPath(args[0], .. scope .()); // The path we need to move the items to

			FileEnumerator f = Directory.EnumerateFiles(args[0]);
			for(var i in f)
			{
				// Construct the target path
				String end = scope .(target);
				end.Append("/"); // Need this in the middle
				end.Append(i.GetFileName(.. scope .()));
				Result<void, Platform.BfpFileResult> e = File.Move(i.GetFilePath(.. scope .()),end);
				if(e case .Err(let err))
					Console.WriteLine(err);
			}

			
			FileEnumerator ff = Directory.EnumerateDirectories(args[0]);
			for(var i in ff)
			{
				// Construct the target path
				String end = scope .(target);
				end.Append("/"); // Need this in the middle
				end.Append(i.GetFileName(.. scope .()));
				Result<void, Platform.BfpFileResult> e = File.Move(i.GetFilePath(.. scope .()),end);
				if(e case .Err(let err))
					Console.WriteLine(err);
			}
		}

	}
}