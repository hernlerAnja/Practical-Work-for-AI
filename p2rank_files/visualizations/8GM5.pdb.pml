
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
        
        load "data/8GM5.pdb", protein
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
 
        load "data/8GM5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3972,3973,3981,3948,3969,3978,3979,632,633,634,635,636,637,1280,3944,3961,3967,731,732,1282,3919,3920,3968,3915,3908,3913,3916,3917,3910,4275,618,619,627,631,617,1259,1263,729,297,603,604,1138,318,299,320,412,623,1119,1121,1124,1258,1265,1137] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1331,1333,1334,1335,1656,499,501,504,557,496,498,1657,1707,1272,738,739,740,1329,1330,1315,1300,1289,1291,1298,1332,1302,536,535,506,515,516,507,1715,752,1353,1640] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1731,1719,1711,1713,1715,776,893,1714,538,539,528,529,532,524,519,523,516,892,927,889,918,890,891,1132,1657,1656,1387,1640,1385,1386,1353,1811,1815,1816,531,774,1795,1805,1807,1804,852] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [142,155,156,163,164,138,146,139,114,115,157,1307,1311,4084,4093,3957,1290,714,717,718,721,595,706,709,712,702,1286,3915,3926,3924,3928,4061,3929,713,1279] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [932,955,956,957,958,967,993,994,936,1123,342,352,353,354,3987,3988,3989,3991,3992,4242,4253,4255,3977,3973,3974,3990,340,341,326] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [846,870,871,872,874,875,876,909,379,308,310,403,404,383,380,381,382] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3421,3422,3423,3401,3391,3392,3079,3349,3106,3107,3108,3300,3135,3141,3302] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        