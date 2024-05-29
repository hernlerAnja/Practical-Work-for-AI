
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/2HR7.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/2HR7.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [271,272,4248,291,263,4513,512,513,4443,4445,4496,4497,4229,515,517,4689,4690,4691,4692,4511,4512,4514,4230,4244,4246,4245,4247,713,714,764,497,247,248,712,511,4451,4472,4474,523,792,525,526,290,546,4007,3823,4015,3991,4444,4446,3992,793,778,783,781] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [5558,5733,5734,5742,3773,5562,5563,3757,5725,5521,5609,5522,5557,3749,5559,5561,5590,5486,5591,5592,4176,4178,5732,3944,3751,3752,3936,3937,4404,5726,5744,5502,5513,5517,5503,4168,4169,4170,5508,5516] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [27,1798,1803,1848,2016,200,1850,1852,1793,1877,1876,1792,1849,1851,1853,1789,1873,1874,1872,1875,1769,1776,7,1,11,192,193,1796,438,436,437,2014,1886,1891,1807,446] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [228,230,689,247,248,480,481,710,712,59,58,60,4905,4907,4908,4903,4904,4710,4692,4930,76,77,721,699,715,4890,723,4886,4884,4885,4894] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [6277,1323,1322,1341,1356,6268,6455,6457,6461,6279,1451,1452,1453] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2233,2231,1985,1986,2197,2199,2202,2204,2210,2207,214,1993,1994,1995,2108,2077,38,212,216] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [228,230,231,222,470,689,690,219,43,44,38,41,42,212] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3999,4000,4238,4291,4338,4094] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        